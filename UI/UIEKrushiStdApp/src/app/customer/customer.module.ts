import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CustomerDashboardComponent } from './customer-dashboard/customer-dashboard.component';
import { RouterModule, Routes } from '@angular/router';
import { CustomerOrdersComponent } from './customer-orders/customer-orders.component';
import { CustomerWishlistComponent } from './customer-wishlist/customer-wishlist.component';
import { CustomerPaymenthistoryComponent } from './customer-paymenthistory/customer-paymenthistory.component';
import { OrderProductDetailsComponent } from './customer-orders/order-product-details/order-product-details.component';
import { OrderDetailsComponent } from './customer-orders/order-details/order-details.component';
import { OrderSummeryComponent } from './customer-orders/order-summery/order-summery.component';
import { PaymentsummeryComponent } from './customer-paymenthistory/paymentsummery/paymentsummery.component';
import { FormsModule } from '@angular/forms';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { ShoppingcartComponent } from './shoppingcart/shoppingcart.component';
import { CartSummaryComponent } from './shoppingcart/cart-summary/cart-summary.component';

export const customerRoutes: Routes = [
  { path: 'dashboard', component: CustomerDashboardComponent },
  { path: 'orders', component: CustomerOrdersComponent },
  { path: 'orders/details/:orderid', component: OrderDetailsComponent },
  { path: 'paymentlist', component: CustomerPaymenthistoryComponent },
  { path: 'wishlist', component: CustomerWishlistComponent },
  { path: 'shoppingcart', component: ShoppingcartComponent },
];

@NgModule({
  declarations: [
    CustomerDashboardComponent,
    CustomerOrdersComponent,
    CustomerWishlistComponent,
    CustomerPaymenthistoryComponent,
    OrderProductDetailsComponent,
    OrderDetailsComponent,
    OrderSummeryComponent,
    ShoppingcartComponent,
    CartSummaryComponent,
    PaymentsummeryComponent,
  ],
  imports: [CommonModule, RouterModule, FormsModule, MatSnackBarModule],
})
export class CustomerModule {}
