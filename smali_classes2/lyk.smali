.class Llyk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llyj;


# direct methods
.method constructor <init>(Llyj;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Llyk;->a:Llyj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Llyk;->a:Llyj;

    invoke-virtual {v0}, Llyj;->dismiss()V

    .line 143
    return-void
.end method
