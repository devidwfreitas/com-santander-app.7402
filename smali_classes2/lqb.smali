.class Llqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Llqa;


# direct methods
.method constructor <init>(Llqa;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Llqb;->a:Llqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 731
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    new-instance v1, Lkxb;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkxb;-><init>(Z)V

    invoke-virtual {v0, v1}, Lnfg;->a(Ljava/lang/Object;)V

    .line 732
    return-void
.end method
