.class Lacs;
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
    .line 97
    iput-object p1, p0, Lacs;->a:Lacr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lacs;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method
