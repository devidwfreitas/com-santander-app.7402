.class public Lcoq;
.super Lcow;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcow;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput p1, p0, Lcoq;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcoq;->a:I

    return v0
.end method
