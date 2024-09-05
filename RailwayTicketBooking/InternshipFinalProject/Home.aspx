<%@ Page Title="" Language="C#" MasterPageFile="~/RailwayTicket.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="InternshipFinalProject.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <header id="header">
            <!--Header Starts Here-->
            <div>
                <h1 id="heading">INDIAN RAILWAY</h1>
                <ul class="ulheading">
                    <li>SAFETY</li>
                    <li>SECURITY</li>
                    <li>PUNCTUALITY</li>
                </ul>
            </div>
            <!--Navigation Bar Ends Here-->
        </header>
        <h1 id="HomePageHeading">Places to Visit In India</h1>
        <div class="out-image">
            <div class="in-image">
                <img src="Images/TouristImage-1.jpg" alt="Varanasi Image" />
                <h3>Varanasi</h3>
                <p>Varanasi is a city in the northern Indian state of Uttar Pradesh dating to the 11th century B.C. Regarded as the spiritual capital of India, the city draws Hindu pilgrims who bathe in the Ganges River’s sacred waters and perform funeral rites. Along the city's winding streets are some 2,000 temples, including Kashi Vishwanath, the “Golden Temple,” dedicated to the Hindu god Shiva.</p>
                <asp:LinkButton ID="LinkButton1" Style="font-size: 25px; text-align: center; border-radius: 2px;" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Height="30px" Width="320px" href="LogIn.aspx">Book Tickets</asp:LinkButton>

            </div>
            <div class="in-image">
                <img src="Images/TouristImage-2.png" alt="Kedarnath Image" />
                <h3>Kedarnath</h3>
                <p>Chota Char Dham Yamunotri Gangotri Kedarnath Badrinath Kedarnath Temple is a Hindu temple dedicated to Shiva. The temple is located on the Garhwal Himalayan range near the Mandakini river, in the state of Uttarakhand, India.</p>
                <asp:LinkButton ID="LinkButton2" Style="font-size: 25px; text-align: center; border-radius: 2px;" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Height="30px" Width="320px" href="LogIn.aspx">Book Tickets</asp:LinkButton>

            </div>
            <div class="in-image">
                <img src="Images/TouristImage-3.jpg" alt="Haridwar-Rishikesh Image" />
                <h3>Haridwar-Rishikesh</h3>
                <p>Haridwar is a beautiful city settled on the banks of river Ganga well known for its beauty and spirituality. Located where the sacred River Ganga emerges from the base of the Himalayas, it’s considered one of the 7 Sapta Puri. Visit the Siddh Peeth and make a wish, get a chance to see beautiful deity and listen to their magical stories.</p>
                <p>Rishikesh is a beautiful city nestled in the foothills of the Himalayas and Ganga is the paradise for all adventure lovers and spiritual lovers. It has a plethora of Ashrams throughout the city offering the best Yoga and Meditation experience in the world. Visit the famed Lakshman Jhula, as it sways above the water. Stroll down through the narrow lanes nearby.</p>
                <asp:LinkButton ID="LinkButton3" Style="font-size: 25px; text-align: center; border-radius: 2px;" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Height="30px" Width="320px" href="LogIn.aspx">Book Tickets</asp:LinkButton>

            </div>
            <div class="in-image">
                <img src="Images/TouristImage-4.jpg" alt="Prayagraj Image" />
                <h3>Prayagraj</h3>
                <p>Allahabad, officially known as Prayagraj, also known as Ilahabad, is a metropolis in the Indian state of Uttar Pradesh. Temples of Prayagraj. Prayag has been known as the greatest pilgrimage since the Rig-Veda era. The basic reason is the confluence of two holiest rivers in India – the Ganga and the Yamuna. It is said one who dies at the Sangam is freed from the cycle of re-birth and attains salvation.</p>
                <asp:LinkButton ID="LinkButton4" Style="font-size: 25px; text-align: center; border-radius: 2px;" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Height="30px" Width="320px" href="LogIn.aspx">Book Tickets</asp:LinkButton>

            </div>
            <div class="in-image">
                <img src="Images/TouristImage-5.jpg" alt="Mathura-Vrindavan Image" />
                <h3>Mathura-Vrindavan</h3>
                <p>Lying in Uttar Pradesh, Vrindavan and Mathura are generally considered to be twin cities and visited together. Known as the birthplace of Lord Krishna, Mathura is a quaint town packed with temples dating back to different ages. The place receives a heavy influx of devotees from across the world, especially during Holi and Janmashtami</p>
                <p>Lying on the banks of River Yamuna, Vrindavan is known as the childhood abode of Lord Krishna. The exuberant atmosphere of this town is believed to be symbolic of the benevolent and playful nature of the Hindu God, Krishna.</p>
                <asp:LinkButton ID="LinkButton5" Style="font-size: 25px; text-align: center; border-radius: 2px;" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Height="30px" Width="320px" href="LogIn.aspx">Book Tickets</asp:LinkButton>

            </div>
            <div class="in-image">
                <img src="Images/TouristImage-6.jpg" alt="Rameshwaram Image" />
                <h3>Rameshwaram</h3>
                <p>Rameswaram is a town on Pamban Island, in the southeast Indian state of Tamil Nadu. It’s known for Ramanathaswamy Temple, a Hindu pilgrimage site with ornate corridors, huge sculpted pillars and sacred water tanks. Devotees bathe in the waters of Agni Theertham, off the beach east of the temple. Gandamadana Parvatham is a hill with island views. A chakra (wheel) here is said to bear an imprint of Lord Rama’s feet.</p>
                <asp:LinkButton ID="LinkButton6" Style="font-size: 25px; text-align: center; border-radius: 2px;" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Height="30px" Width="320px" href="LogIn.aspx">Book Tickets</asp:LinkButton>

            </div>
        </div>
    </section>
</asp:Content>
