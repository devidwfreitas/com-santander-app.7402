.class Lcbz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# instance fields
.field final synthetic a:Lbyu;

.field final synthetic b:Lcbx;


# direct methods
.method constructor <init>(Lcbx;Lbyu;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcbz;->b:Lcbx;

    iput-object p2, p0, Lcbz;->a:Lbyu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcbz;->b:Lcbx;

    .line 195
    invoke-virtual {v0}, Lcbx;->a()I

    move-result v0

    iget-object v1, p0, Lcbz;->a:Lbyu;

    .line 194
    invoke-static {v0, p1, p2, v1}, Lbze;->a(IILandroid/content/Intent;Lbyu;)Z

    move-result v0

    return v0
.end method
