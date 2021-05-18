.class public Lcmr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcmq;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcmq;)V
    .locals 0

    .prologue
    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object p1, p0, Lcmr;->a:Ljava/lang/String;

    .line 804
    iput-object p2, p0, Lcmr;->b:Lcmq;

    .line 805
    return-void
.end method

.method static synthetic a(Lcmr;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcmr;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcmr;)Lcmq;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcmr;->b:Lcmq;

    return-object v0
.end method
