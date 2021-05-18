.class Llyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llyh;


# direct methods
.method constructor <init>(Llyh;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Llyi;->a:Llyh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Llyi;->a:Llyh;

    invoke-virtual {v0}, Llyh;->dismiss()V

    .line 72
    return-void
.end method
