# paging
paging basic

- 현재 페이지 알기: page.on "change: currentPage"
- 페이지 확인호출: horizontalPageIndex()

```
page.on "change:currentPage", ->
# 	print page.currentPage.x
# 	print page.horizontalPageIndex(layerA)
# 	print page.horizontalPageIndex(layerB)
# 	print page.horizontalPageIndex(layerC)
# 	print page.horizontalPageIndex(page.currentPage)

	if page.horizontalPageIndex(page.currentPage) == 0
		paging01.opacity = 1
		paging02.opacity = .3
		paging03.opacity = .3

	else if page.horizontalPageIndex(page.currentPage) == 1
		paging01.opacity = .3
		paging02.opacity = 1
		paging03.opacity = .3
		
	else if page.horizontalPageIndex(page.currentPage) == 2
		paging01.opacity = .3
		paging02.opacity = .3
		paging03.opacity = 1
```
