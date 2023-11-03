import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Question } from 'src/app/Models/question';
import { QuestionAnswer } from 'src/app/Models/questionanswer';
import { ConsultingService } from 'src/app/Services/consulting.service';

@Component({
  selector: 'app-questionanswer',
  templateUrl: './questionanswer.component.html',
  styleUrls: ['./questionanswer.component.css'],
})
export class QuestionanswerComponent implements OnInit {
  constructor(private svc: ConsultingService, private route: ActivatedRoute) {}
  questionsAnswers: QuestionAnswer[] = [];
  question: string = '';
  id!: number;
  ngOnInit(): void {
    this.route.paramMap.subscribe((res) => {
      this.id = Number(res.get('id'));

      this.svc.getAnswers(this.id).subscribe((res) => {
        this.questionsAnswers = res;
        this.question = this.questionsAnswers[0].question;
      });
    });
  }
}
