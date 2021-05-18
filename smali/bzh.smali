.class final Lbzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbhl;


# direct methods
.method constructor <init>(ILbhl;)V
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lbzh;->a:I

    iput-object p2, p0, Lbzh;->b:Lbhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lbzh;->a:I

    iget-object v1, p0, Lbzh;->b:Lbhl;

    .line 262
    invoke-static {v1}, Lbze;->a(Lbhl;)Lbyu;

    move-result-object v1

    .line 258
    invoke-static {v0, p1, p2, v1}, Lbze;->a(IILandroid/content/Intent;Lbyu;)Z

    move-result v0

    return v0
.end method
