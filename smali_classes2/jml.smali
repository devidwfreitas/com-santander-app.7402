.class Ljml;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljmk;


# direct methods
.method constructor <init>(Ljmk;JJ)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Ljml;->a:Ljmk;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljml;->a:Ljmk;

    invoke-static {v0}, Ljmk;->a(Ljmk;)Ljly;

    move-result-object v0

    invoke-interface {v0}, Ljly;->a()V

    .line 51
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
