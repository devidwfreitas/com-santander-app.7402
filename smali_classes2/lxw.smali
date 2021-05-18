.class Llxw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llxv;


# direct methods
.method constructor <init>(Llxv;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Llxw;->a:Llxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Llxw;->a:Llxv;

    invoke-virtual {v0}, Llxv;->dismiss()V

    .line 113
    return-void
.end method
