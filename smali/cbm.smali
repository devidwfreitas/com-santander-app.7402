.class Lcbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# instance fields
.field final synthetic a:Lbyu;

.field final synthetic b:Lcbk;


# direct methods
.method constructor <init>(Lcbk;Lbyu;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcbm;->b:Lcbk;

    iput-object p2, p0, Lcbm;->a:Lbyu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcbm;->b:Lcbk;

    .line 193
    invoke-virtual {v0}, Lcbk;->a()I

    move-result v0

    iget-object v1, p0, Lcbm;->a:Lbyu;

    .line 192
    invoke-static {v0, p1, p2, v1}, Lbze;->a(IILandroid/content/Intent;Lbyu;)Z

    move-result v0

    return v0
.end method
