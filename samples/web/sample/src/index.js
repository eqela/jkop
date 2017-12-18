import * as Jkop from "jkop-cave-web";

class SampleWidget extends Jkop.CaveUIVerticalBoxWidget
{
	initializeWidget()
	{
		super.initializeWidget();
		this.setWidgetSpacing(this.context.getHeightValue("5mm"));
		let label1 = Jkop.CaveUILabelWidget.forText(this.context, "Hello Superman 1");
		this.addWidget(label1);
		this.addWidget(Jkop.CaveUILabelWidget.forText(this.context, "Hello Superman 2"));
		this.addWidget(Jkop.CaveUITextButtonWidget.forText(this.context, "Click me", function() {
			console.log("CLICKED!");
			label1.setWidgetText("Button was clicked.");
		}));
	}
}

class AppScreen extends Jkop.CaveUIScreenForWidget
{
	initialize()
	{
		super.initialize();
		let color = Jkop.CaveColor.forString("#BBBBFF");
		let layer = Jkop.CaveUILayerWidget.forContext(this.context);
		layer.addWidget(Jkop.CaveUICanvasWidget.forColor(this.context, color));
		layer.addWidget(Jkop.CaveUIAlignWidget.forWidget(this.context, new SampleWidget(this.context)));
		this.setWidget(layer);
	}
}

console.log("Starting: " + Jkop.CapeOS.getCurrentPlatformName());
let context = new Jkop.CaveGuiApplicationContextForHTML();
let main = new AppScreen();
main.setContext(context);
main.initialize();
