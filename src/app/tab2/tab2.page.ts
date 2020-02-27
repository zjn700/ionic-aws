import { Component } from "@angular/core";

@Component({
  selector: "app-tab2",
  templateUrl: "tab2.page.html",
  styleUrls: ["tab2.page.scss"]
})
export class Tab2Page {
  buttonName = "Change";
  son = "Zac";

  customYearValues = [2020, 2016, 2008, 2004, 2000, 1996];
  customDayShortNames = [
    "s\u00f8n",
    "man",
    "tir",
    "ons",
    "tor",
    "fre",
    "l\u00f8r"
  ];
  customPickerOptions: any;

  public form = [
    { val: "Pepperoni", isChecked: true },
    { val: "Sausage", isChecked: false },
    { val: "Mushroom", isChecked: false }
  ];

  constructor() {
    this.customPickerOptions = {
      buttons: [
        {
          text: "Save",
          handler: () => console.log("Clicked Save!")
        },
        {
          text: "Log",
          handler: () => {
            console.log("Clicked Log. Do not Dismiss.");
            return false;
          }
        }
      ]
    };
  }

  changeText() {
    if (this.buttonName == "Change") {
      this.buttonName = "Uh oh";
    } else {
      this.buttonName = "Change";
    }

    if (this.son == "Zac") {
      this.son = "Josh";
    } else {
      if (this.son == "Josh") {
        this.son = "Noah";
      } else {
        if (this.son == "Noah") {
          this.son = "Zac";
        }
      }
    }
  }
}
