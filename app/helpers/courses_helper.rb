module CoursesHelper
	include Pagy::Frontend

	def table_heading_link(sort, title, link)
		if sort == "ida" then
			icon = "sort-numeric-asc"
		elsif sort == "idd" then
			icon = "sort-numeric-desc"
		elsif sort == "ta" then
			icon = "sort-alpha-asc"
		elsif sort == "td" then
			icon = "sort-alpha-desc"
		end

		return content_tag(:a, fa_icon(icon, text: title, right: true), style: "color: inherit;", href: link)
	end
end
