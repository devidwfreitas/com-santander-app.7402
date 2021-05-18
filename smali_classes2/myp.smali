.class final Lmyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lmyp;->a:Landroid/app/Activity;

    iput-object p2, p0, Lmyp;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 79
    check-cast p1, Lnax;

    .line 80
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljcr;

    new-instance v1, Lmyq;

    invoke-direct {v1, p0}, Lmyq;-><init>(Lmyp;)V

    iget-object v2, p0, Lmyp;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljcr;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 95
    invoke-virtual {v0}, Ljcr;->a()V

    .line 97
    return-void
.end method
