import { Component, OnInit, Input } from '@angular/core';
import { HomeService } from '../api/home.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.less']
})
export class HomeComponent implements OnInit {
  type = 'home';
  location: string;

  constructor(private homeService: HomeService) { }

  ngOnInit() {
    this.homeService.home(this.type)
      .subscribe((home) => {
        this.location = home.location;
      });
  }

}
