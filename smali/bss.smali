.class Lbss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# instance fields
.field final synthetic a:Lbsp;


# direct methods
.method constructor <init>(Lbsp;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lbss;->a:Lbsp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lbss;->a:Lbsp;

    invoke-virtual {v0, p1, p2}, Lbsp;->a(ILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method
