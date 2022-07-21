use gtk::prelude::*;
use gtk::{Application, ApplicationWindow};

fn main() {
    let app = Application::builder()
        .application_id("org.pahuch.browser")
        .build();

    app.connect_activate(|app| {
        // We create the main window.
        let win = ApplicationWindow::builder()
            .application(app)
            .default_width(500)
            .default_height(500)
            .title("Pahuch")
            .build();

        // Don't forget to make all widgets visible.
        win.show_all();
    });

    app.run();
}