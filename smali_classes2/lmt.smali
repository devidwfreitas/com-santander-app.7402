.class Llmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llms;


# direct methods
.method constructor <init>(Llms;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Llmt;->a:Llms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llmt;->a:Llms;

    invoke-virtual {v0}, Llms;->dismiss()V

    .line 78
    return-void
.end method
