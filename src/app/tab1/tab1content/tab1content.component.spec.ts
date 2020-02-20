import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { Tab1contentComponent } from './tab1content.component';

describe('Tab1contentComponent', () => {
  let component: Tab1contentComponent;
  let fixture: ComponentFixture<Tab1contentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Tab1contentComponent ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(Tab1contentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
