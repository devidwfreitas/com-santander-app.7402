.class Llfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llfh;


# direct methods
.method constructor <init>(Llfh;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Llfi;->a:Llfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llfi;->a:Llfh;

    invoke-virtual {v0}, Llfh;->dismiss()V

    .line 61
    return-void
.end method
