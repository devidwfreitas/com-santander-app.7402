.class Llxp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llxn;


# direct methods
.method constructor <init>(Llxn;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Llxp;->a:Llxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Llxp;->a:Llxn;

    invoke-virtual {v0}, Llxn;->dismiss()V

    .line 88
    return-void
.end method
