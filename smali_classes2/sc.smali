.class Lsc;
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
    .line 171
    iput-object p1, p0, Lsc;->a:Lrz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lsc;->a:Lrz;

    invoke-virtual {v0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 175
    return-void
.end method
