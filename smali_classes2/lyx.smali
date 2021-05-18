.class Llyx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llyw;


# direct methods
.method constructor <init>(Llyw;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Llyx;->a:Llyw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Llyx;->a:Llyw;

    invoke-virtual {v0}, Llyw;->dismiss()V

    .line 62
    return-void
.end method
