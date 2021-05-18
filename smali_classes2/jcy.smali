.class Ljcy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyx;


# instance fields
.field final synthetic a:Lyw;

.field final synthetic b:Ljcx;


# direct methods
.method constructor <init>(Ljcx;Lyw;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Ljcy;->b:Ljcx;

    iput-object p2, p0, Ljcy;->a:Lyw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Live;->a(Ljava/lang/Boolean;)V

    .line 398
    :cond_0
    iget-object v0, p0, Ljcy;->a:Lyw;

    invoke-interface {v0, p1}, Lyw;->a(Ljava/lang/Object;)V

    .line 399
    return-void
.end method
