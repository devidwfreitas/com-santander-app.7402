.class Lwi;
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
    .line 76
    iput-object p1, p0, Lwi;->a:Lwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lwi;->a:Lwh;

    invoke-static {v0}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 80
    return-void
.end method
