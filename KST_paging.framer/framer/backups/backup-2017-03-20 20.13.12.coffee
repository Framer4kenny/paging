page = new PageComponent
	width: Screen.width - 50
	height: Screen.height - 200
	x: Align.center
	y: 25
	scrollVertical: false
	borderRadius: 20

layerA = new Layer
	backgroundColor: "aqua"
	width: Screen.width
	height: Screen.height
	
layerB = new Layer
	backgroundColor: "yellow"
	width: Screen.width
	height: Screen.height
	
layerC = new Layer
	backgroundColor: "purple"
	width: Screen.width
	height: Screen.height

page.addPage (layerA)
page.addPage (layerB)
page.addPage (layerC)

paging01 = new Layer
	width: 30
	height: 30
	backgroundColor: "white"
	borderRadius: 100
	x: Screen.width/2 - 60
	y: 1220
	opacity: 1
	
paging02 = new Layer
	width: 30
	height: 30
	backgroundColor: "white"
	borderRadius: 100
	x: Screen.width/2 - 15
	y: 1220
	opacity: .3
		
paging03 = new Layer
	width: 30
	height: 30
	backgroundColor: "white"
	borderRadius: 100
	x: Screen.width/2 + 30
	y: 1220
	opacity: .3
	
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
	
# 	if page.currentPage.x == 0
# 		paging01.opacity = 1
# 		paging02.opacity = .3
# 		paging03.opacity = .3
# 	else if page.currentPage.x == 750
# 		paging01.opacity = 0.3
# 		paging02.opacity = 1
# 		paging03.opacity = 0.3
# 	else if page.currentPage.x == 1500
# 		paging01.opacity = 0.3
# 		paging02.opacity = 0.3
# 		paging03.opacity = 1		
	