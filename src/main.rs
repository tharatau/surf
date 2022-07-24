use gtk::prelude::*;
use gtk::{Application, ApplicationWindow};

const APP_ID: &str = "org.pahuch.browser";

fn main() {
    // Create a new application
    let app = Application::builder().application_id(APP_ID).build();

    // Connect to "activate" signal of `app`
    app.connect_activate(build_ui);

    // Run the application
    app.run();
}

fn build_ui(app: &Application) {
    // Create a window and set the title
    let window = ApplicationWindow::builder()
        .application(app)
        .title("Pahuch")
        .default_height(500)
        .default_width(500)
        .build();

    // Present window
    window.present();
}
