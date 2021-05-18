.class final Lgrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgrk;


# direct methods
.method constructor <init>(Lgrk;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lgrh;->a:Lgrk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lgrh;->a:Lgrk;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lgrh;->a:Lgrk;

    invoke-interface {v0}, Lgrk;->a()V

    .line 374
    :cond_0
    return-void
.end method
