import { Component } from "@angular/core";
import { lessons } from "../../assets/Lessons";

//comments are in green
@Component({
  selector: "app-tab1",
  templateUrl: "tab1.page.html",
  styleUrls: ["_default-colors.scss"]
  //styleUrls: ["tab1.page.scss"]
})
export class Tab1Page {
  lessons = lessons;
  items = [0, 1];
  constructor() {
    console.log(lessons);
  }
}
