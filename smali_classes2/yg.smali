.class Lyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lyf;


# direct methods
.method constructor <init>(Lyf;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lyg;->a:Lyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lyg;->a:Lyf;

    invoke-virtual {v0}, Lyf;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 82
    return-void
.end method
