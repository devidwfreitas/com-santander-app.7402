.class Lbyh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# instance fields
.field final synthetic a:Lbyu;

.field final synthetic b:Lbyf;


# direct methods
.method constructor <init>(Lbyf;Lbyu;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lbyh;->b:Lbyf;

    iput-object p2, p0, Lbyh;->a:Lbyu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lbyh;->b:Lbyf;

    .line 131
    invoke-virtual {v0}, Lbyf;->a()I

    move-result v0

    iget-object v1, p0, Lbyh;->a:Lbyu;

    .line 130
    invoke-static {v0, p1, p2, v1}, Lbze;->a(IILandroid/content/Intent;Lbyu;)Z

    move-result v0

    return v0
.end method
