.class Llxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llxx;


# direct methods
.method constructor <init>(Llxx;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Llxz;->a:Llxx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Llxz;->a:Llxx;

    invoke-virtual {v0}, Llxx;->dismiss()V

    .line 165
    return-void
.end method
