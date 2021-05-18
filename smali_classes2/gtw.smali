.class public Lgtw;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;JJ)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lgtw;->a:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lgtw;->a:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    const-string v1, "00:00"

    invoke-static {v0, v1}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lgtw;->a:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-virtual {v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->invalidate()V

    .line 194
    iget-object v0, p0, Lgtw;->a:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-static {v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;)Lgtx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lgtw;->a:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-static {v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;)Lgtx;

    move-result-object v0

    invoke-interface {v0}, Lgtx;->b()V

    .line 197
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lgtw;->a:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-static {v0, p1, p2}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;J)V

    .line 188
    iget-object v0, p0, Lgtw;->a:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    iget-object v1, p0, Lgtw;->a:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-static {v1, p1, p2}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->b(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;Ljava/lang/String;)V

    .line 189
    return-void
.end method
