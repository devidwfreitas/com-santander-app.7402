.class Lact;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lacr;


# direct methods
.method constructor <init>(Lacr;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lact;->a:Lacr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->b(Lacr;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    return-void
.end method
