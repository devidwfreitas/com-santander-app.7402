.class Lgns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lih;

.field final synthetic b:Lgnp;


# direct methods
.method constructor <init>(Lgnp;Lih;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lgns;->b:Lgnp;

    iput-object p2, p0, Lgns;->a:Lih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 236
    check-cast p1, Lnax;

    .line 237
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lgns;->b:Lgnp;

    iget-object v1, p0, Lgns;->a:Lih;

    invoke-virtual {v0, v1}, Lgnp;->a(Lih;)V

    .line 239
    return-void
.end method
