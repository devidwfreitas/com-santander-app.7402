.class public Laxd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Laxd;->a:I

    .line 17
    iput p2, p0, Laxd;->b:I

    .line 18
    iput-object p3, p0, Laxd;->c:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Laxd;->d:Ljava/lang/String;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Laxe;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Laxd;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Laxd;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Laxd;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Laxd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Laxd;->d:Ljava/lang/String;

    return-object v0
.end method
