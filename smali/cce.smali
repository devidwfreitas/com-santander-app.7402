.class Lcce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# instance fields
.field final synthetic a:Lbyu;

.field final synthetic b:Lccc;


# direct methods
.method constructor <init>(Lccc;Lbyu;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcce;->b:Lccc;

    iput-object p2, p0, Lcce;->a:Lbyu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcce;->b:Lccc;

    .line 179
    invoke-virtual {v0}, Lccc;->a()I

    move-result v0

    iget-object v1, p0, Lcce;->a:Lbyu;

    .line 178
    invoke-static {v0, p1, p2, v1}, Lbze;->a(IILandroid/content/Intent;Lbyu;)Z

    move-result v0

    return v0
.end method
