.class Lmyq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmyp;


# direct methods
.method constructor <init>(Lmyp;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lmyq;->a:Lmyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 86
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljch;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Ljch;

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lmyq;->a:Lmyp;

    iget-object v0, v0, Lmyp;->a:Landroid/app/Activity;

    iget-object v1, p0, Lmyq;->a:Lmyp;

    iget-object v1, v1, Lmyp;->a:Landroid/app/Activity;

    const v2, 0x7f090540

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljch;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmyq;->a:Lmyp;

    iget-object v3, v3, Lmyp;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lmyo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
