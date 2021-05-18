.class final Lbxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lbnl;->Like:Lbnl;

    .line 314
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    .line 313
    invoke-static {v0, p1, p2}, Lbww;->a(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method
