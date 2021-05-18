.class final Lmyr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lzx;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lzx;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lmyr;->a:Landroid/app/Activity;

    iput-object p2, p0, Lmyr;->b:Ljava/lang/String;

    iput-object p3, p0, Lmyr;->c:Lzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 107
    check-cast p1, Lnax;

    .line 108
    new-instance v0, Ljcz;

    iget-object v1, p0, Lmyr;->a:Landroid/app/Activity;

    iget-object v2, p0, Lmyr;->b:Ljava/lang/String;

    iget-object v3, p0, Lmyr;->c:Lzx;

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljcz;-><init>(Landroid/app/Activity;Ljava/lang/String;Lzx;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljcz;->c([Ljava/lang/Object;)Lgne;

    .line 109
    return-void
.end method
