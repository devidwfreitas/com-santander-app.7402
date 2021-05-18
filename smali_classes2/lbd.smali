.class Llbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llbc;


# direct methods
.method constructor <init>(Llbc;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Llbd;->a:Llbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Llbd;->a:Llbc;

    invoke-virtual {v0}, Llbc;->dismiss()V

    .line 86
    return-void
.end method
