import { Component, OnInit, Input } from "@angular/core";

@Component({
  selector: "app-tab2content",
  templateUrl: "./tab2content.component.html",
  styleUrls: ["./tab2content.component.scss"]
})
export class Tab2contentComponent implements OnInit {
  @Input() son: any;
  constructor() {}

  ngOnInit() {}
}
