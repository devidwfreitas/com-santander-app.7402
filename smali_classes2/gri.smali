.class final Lgri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladi;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 607
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 602
    invoke-static {p1, p2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 597
    invoke-static {p1, p2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method
