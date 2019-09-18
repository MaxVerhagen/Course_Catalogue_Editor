module CoursesHelper
	include Pagy::Frontend

	def table_heading_link(sort, title)
		if sort == "ida" or sort == "td" then
			title == "Course ID" ? icon = "sort-numeric-asc" : icon = "sort-alpha-desc"
			title == "Course ID" ? link = courses_path(sort: "idd") : link = courses_path(sort: "ta")
		elsif sort == "idd" or sort == "ta" then
			icon = "sort-numeric-desc"
			title == "Course ID" ? icon = "sort-numeric-desc" : icon = "sort-alpha-asc"
			title == "Course ID" ? link = courses_path(sort: "ida") : link = courses_path(sort: "td")
		end

		return content_tag(:a, fa_icon(icon, text: title, right: true), style: "color: inherit;", href: link)
	end
end
