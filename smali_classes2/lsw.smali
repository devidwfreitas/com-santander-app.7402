.class Llsw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Llsu;


# direct methods
.method constructor <init>(Llsu;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Llsw;->a:Llsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Llsw;->a:Llsu;

    iget-object v0, v0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V

    .line 178
    return-void
.end method
