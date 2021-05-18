.class Lsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lrz;


# direct methods
.method constructor <init>(Lrz;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lsd;->a:Lrz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lsd;->a:Lrz;

    invoke-virtual {v0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-static {v0}, Laad;->a(Landroid/content/Context;)V

    return-void
.end method
