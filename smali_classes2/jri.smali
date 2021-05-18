.class public Ljri;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljqb;",
        "Ljava/lang/Void;",
        "Ljqa;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;

.field private b:Landroid/app/Activity;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lgne;-><init>()V

    .line 30
    iput-object p1, p0, Ljri;->a:Lgkv;

    .line 31
    iput-object p2, p0, Ljri;->b:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljqb;

    invoke-virtual {p0, p1}, Ljri;->a([Ljqb;)Ljqa;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljqb;)Ljqa;
    .locals 6

    .prologue
    .line 43
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 44
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Ljqa;

    invoke-static {}, Lhas;->H()Ljava/lang/String;

    move-result-object v3

    const-string v4, "marcarContaPreferencial"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljqa;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ljri;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljri;->c:Landroid/app/Dialog;

    .line 37
    iget-object v0, p0, Ljri;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Ljri;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 39
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljqa;

    invoke-virtual {p0, p1}, Ljri;->a(Ljqa;)V

    return-void
.end method

.method protected a(Ljqa;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Ljri;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Ljri;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ljri;->c:Landroid/app/Dialog;

    .line 54
    :cond_0
    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Ljri;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 57
    :cond_1
    return-void
.end method
