import { Component } from "@angular/core";
import { ActionSheetController, AlertController } from "@ionic/angular";

@Component({
  selector: "app-tab3",
  templateUrl: "tab3.page.html",
  styleUrls: ["tab3.page.scss"],
})
export class Tab3Page {
  constructor(
    public actionSheetController: ActionSheetController,
    public alertController: AlertController
  ) {}

  logScrollStart() {
    console.log("logScrollStart");
  }

  logScrolling() {
    console.log("logScrollStart");
    console.log("test");
  }

  logScrollEnd() {
    console.log("logScrollStart");
  }

  async presentAlertMultipleButtons() {
    const alert = await this.alertController.create({
      header: "Alert",
      subHeader: "Subtitle",
      message: "This is an alert message.",
      buttons: ["Cancel", "Open Modal", "Delete"],
    });
    console.log("bah");
    await alert.present();
  }

  async presentActionSheet() {
    const actionSheet = await this.actionSheetController.create({
      header: "Albums",
      subHeader: "Early Years",
      translucent: true,
      keyboardClose: true,
      cssClass: "sheet",
      buttons: [
        {
          text: "Delete",
          role: "destructive",
          icon: "trash",
          handler: () => {
            console.log("Delete clicked");
          },
        },
        {
          text: "Share",
          icon: "share",
          handler: () => {
            console.log("Share clicked");
          },
        },
        {
          text: "Play (open modal)",
          icon: "arrow-dropright-circle",
          handler: () => {
            console.log("Play clicked");
          },
        },
        {
          text: "Favorite",
          icon: "heart",
          handler: () => {
            console.log("Favorite clicked");
          },
        },
        {
          text: "Cancel",
          icon: "close",
          role: "cancel",
          handler: () => {
            console.log("Cancel clicked one");
          },
        },
      ],
    });
    await actionSheet.present();
  }

  settingsPopover() {
    console.log("ppp");
  }
}
