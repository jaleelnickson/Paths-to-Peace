Public Class PathsToPeace

    Private m_strPeacePath As String = ""
    Private m_strPeaceDestination As String = ""
    Private m_strPeaceDescription As String = ""
    
    Public Sub New()
        m_strPeacePath = ""
        m_strPeaceDestination = ""
        m_strPeaceDescription = ""
    End Sub
    
    Public ReadOnly Property PeacePath As String
        Get
            Return m_strPeacePath
        End Get
    End Property
    
    Public ReadOnly Property PeaceDestination As String
        Get
            Return m_strPeaceDestination
        End Get
    End Property
    
    Public ReadOnly Property PeaceDescription As String
        Get
            Return m_strPeaceDescription
        End Get
    End Property
    
    Public Sub AddPeacePath(ByVal peacePath As String, ByVal peaceDestination As String, ByVal peaceDescription As String)
        m_strPeacePath = peacePath
        m_strPeaceDestination = peaceDestination
        m_strPeaceDescription = peaceDescription
    End Sub
    
    Public Function GetPeacePath(ByVal peacePath As String) As String
        If m_strPeacePath.Equals(peacePath) Then
            Return m_strPeacePath
        Else
            Return Nothing
        End If
    End Function
    
    Public Function GetPeaceDestination(ByVal peaceDestination As String) As String
        If m_strPeaceDestination.Equals(peaceDestination) Then
            Return m_strPeaceDestination
        Else
            Return Nothing
        End If
    End Function
    
    Public Function GetPeaceDescription(ByVal peaceDescription As String) As String
        If m_strPeaceDescription.Equals(peaceDescription) Then
            Return m_strPeaceDescription
        Else
            Return Nothing
        End If
    End Function
    
    Public Overloads Overrides Function ToString() As String
        Dim strPathsToPeace As String = ""
        strPathsToPeace &= "Path: " & m_strPeacePath & vbCrLf
        strPathsToPeace &= "Destination: " & m_strPeaceDestination & vbCrLf
        strPathsToPeace &= "Description: " & m_strPeaceDescription
        Return strPathsToPeace
    End Function

End Class