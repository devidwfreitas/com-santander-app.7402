.class Lltb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Llta;


# direct methods
.method constructor <init>(Llta;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lltb;->a:Llta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lltb;->a:Llta;

    iget-object v0, v0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->h(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V

    .line 336
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lltc;

    invoke-direct {v1, p0}, Lltc;-><init>(Lltb;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 343
    iget-object v0, p0, Lltb;->a:Llta;

    iget-object v0, v0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->finish()V

    .line 344
    return-void
.end method
