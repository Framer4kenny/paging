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
	
paging02 = new Layer
	width: 30
	height: 30
	backgroundColor: "white"
	borderRadius: 100
	x: Screen.width/2 - 15
	y: 1220
	
paging03 = new Layer
	width: 30
	height: 30
	backgroundColor: "white"
	borderRadius: 100
	x: Screen.width/2 + 30
	y: 1220

page.on "change:currentPage", ->
	print page.currentPage
	print page.horizontalPageIndex(layerA)
	print page.horizontalPageIndex(layerB)
	print page.horizontalPageIndex(layerC)
	if page.currentPage > 0 && page.currentPage < 750
		paging01.opacity = 1
		paging02.opacity = 0
		paging02.opacity = 0
	