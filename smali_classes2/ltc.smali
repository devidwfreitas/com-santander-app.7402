.class Lltc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lltb;


# direct methods
.method constructor <init>(Lltb;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lltc;->a:Lltb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 339
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    new-instance v1, Lkxj;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkxj;-><init>(Z)V

    invoke-virtual {v0, v1}, Lnfg;->a(Ljava/lang/Object;)V

    .line 340
    return-void
.end method
