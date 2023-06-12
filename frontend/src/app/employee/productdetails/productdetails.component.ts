import { Component, OnInit } from '@angular/core';
import { EmployeeModule } from '../employee.module';
import { Product } from 'src/app/product';
import { EmployeeService } from '../employee.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-productdetails',
  templateUrl: './productdetails.component.html',
  styleUrls: ['./productdetails.component.css']
})
export class ProductdetailsComponent implements OnInit{

  product: Product |any;
  id:any; 
  
  constructor(private svc:EmployeeService,private route:ActivatedRoute,private router:Router){}
  
  ngOnInit(): void {
      this.route.paramMap.subscribe((params)=>{
      this.id = params.get('id');
      console.log(this.id);
      })
      this.svc.getById(this.id).subscribe((res)=>{
      this.product=res;
      })
    }
  }

  

