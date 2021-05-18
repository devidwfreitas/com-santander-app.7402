.class Lwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lwh;


# direct methods
.method constructor <init>(Lwh;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lwj;->a:Lwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lwj;->a:Lwh;

    invoke-virtual {v0}, Lwh;->e()Lack;

    move-result-object v0

    invoke-static {v0}, Laad;->a(Landroid/content/Context;)V

    return-void
.end method
