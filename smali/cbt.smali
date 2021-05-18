.class Lcbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# instance fields
.field final synthetic a:Lbyu;

.field final synthetic b:Lcbr;


# direct methods
.method constructor <init>(Lcbr;Lbyu;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcbt;->b:Lcbr;

    iput-object p2, p0, Lcbt;->a:Lbyu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcbt;->b:Lcbr;

    .line 181
    invoke-virtual {v0}, Lcbr;->a()I

    move-result v0

    iget-object v1, p0, Lcbt;->a:Lbyu;

    .line 180
    invoke-static {v0, p1, p2, v1}, Lbze;->a(IILandroid/content/Intent;Lbyu;)Z

    move-result v0

    return v0
.end method
