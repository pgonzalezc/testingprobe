public class App: Gtk.Application {
	public App () {
		Object (
			application_id: "com.naupacto.pgonzalec.gtkapps",
			flags: ApplicationFlags.HANDLES_OPEN
			);
	}

	protected override void activate() {
		var main_window = new Gtk.ApplicationWindow(this) {
				default_height= 300,
				default_width= 300,
				title= "hello world!!!"
				};
		main_window.present();
	}

	public static int main(string[] args) {
		return new App().run(args);
	}
}